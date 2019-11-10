import 'dart:async';

import 'package:yapily/api.dart';

const userUuid = "81bd70e5-294e-4fdb-ac32-65c526d80968";
const applicationUuid = "2c569806-9cab-4771-82a0-918b86acae61";
const callbackUrl = 'yapily://mobile';


Future<List<ConsentInstitution>> getConnectedInstitutions() async {
  InstitutionsApi institutionsApi = new InstitutionsApi();
  ConsentsApi consentsApi = new ConsentsApi();
  List<ConsentInstitution> institutionsWithConsent = [];
  
  List<Institution> institutions = await institutionsApi.getInstitutionsUsingGET();
  await Future.forEach(institutions, (Institution institution) async {
    List<Consent> consents = await consentsApi.getUserConsentsUsingGET(userUuid, institutionId: institution.id);
    await Future.forEach(consents, (consent) async {
      try {
        await new AccountsApi().getAccountsUsingGET(consent: consent.consentToken);
        institutionsWithConsent.add(
            new ConsentInstitution(institution, consent));
      } catch(e){}
    });
  });
  return institutionsWithConsent;
}

Future<List<Transaction>> getConsentTransactions(ConsentInstitution consent) async {
  List<Transaction> transactionList;
   List<Account> accounts = await new AccountsApi().getAccountsUsingGET(consent: consent.consent.consentToken);
   await Future.forEach(accounts, (Account account) async {
      List<Transaction> transactions =
      await new TransactionsApi().getTransactionsUsingGET(account.id, consent: consent.consent.consentToken);
      transactionList = transactions;
   });
   return transactionList;
}

Future<String> deleteInstitutionConsents(Consent consent) {
  return ConsentsApi().deleteUsingDELETE(userUuid, consent.consentToken);
}

String getAuthUrl(Institution institution) {
  return "https://staging-auth.yapily.com/direct/?institution={{institution-id}}&application=$applicationUuid&user=$userUuid&callback=$callbackUrl"
      .replaceAll("{{institution-id}}", institution.id);
}

class ConsentInstitution {

  Institution institution;
  Consent consent;

  ConsentInstitution(this.institution, this.consent);
}
