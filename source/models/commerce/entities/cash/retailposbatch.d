module models.commerce.entities.cash.retailposbatch;

@safe:
import models.commerce;

class DRetailPosBatchEntity : DOOPEntity {
  mixin(EntityThis!("RetailPosBatchEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "terminal": StringAttribute, //
        "batchShiftId": StringAttribute, //
        "channel": StringAttribute, //
        "closeDate": StringAttribute, //
        "closeDateTimeUtc": StringAttribute, //
        "closedAtRegisterNumber": StringAttribute, //
        "closeTime": StringAttribute, //
        "customerSalesCount": StringAttribute, //
        "discountTotalAmount": StringAttribute, //
        "kogonsCount": StringAttribute, //
        "noSaleCount": StringAttribute, //
        "locationNumber": StringAttribute, //
        "paidToAccountTotal": StringAttribute, //
        "posted": StringAttribute, //
        "replicationCounter": StringAttribute, //
        "returnsTotal": StringAttribute, //
        "roundedAmountTotal": StringAttribute, //
        "salesCount": StringAttribute, //
        "salesTotal": StringAttribute, //
        "operatorId": StringAttribute, //
        "startDate": StringAttribute, //
        "startDateTimeUtc": StringAttribute, //
        "startTime": StringAttribute, //
        "statementId": StringAttribute, //
        "status": StringAttribute, //
        "operationUnitNumber": StringAttribute, //
        "taxTotal": StringAttribute, //
        "transactionsCount": StringAttribute, //
        "voidsCount": StringAttribute, //
        "itemsSold": StringAttribute, //
        "priceOverrideTotal": StringAttribute, //
        "receiptCopiesCount": StringAttribute, //
        "receiptCopiesTotal": StringAttribute, //
        "returnsCount": StringAttribute, //
        "returnsGrandTotal": StringAttribute, //
        "salesGrandTotal": StringAttribute, //
        "servicesSoldQuantity": StringAttribute, //
        "suspendedCount": StringAttribute, //
        "suspendedTotal": StringAttribute, //
        "trainingCount": StringAttribute, //
        "trainingTotal": StringAttribute, //
        "retailChannelTable_OMOperatingUnitID": StringAttribute, //
        "organizationPartyNumber": StringAttribute, //
        "giftCardsTotal": StringAttribute, //
        "voidedSalesTotal": StringAttribute, //
        "shiftSalesTotal": StringAttribute, //
        "shiftReturnsTotal": StringAttribute, //
        "giftCardCashOutTotal": StringAttribute, //
        "chargeTotal": StringAttribute, //
        "zeroSalesCount": StringAttribute, //
        "hasPendingOfflineTransactions": StringAttribute, //
        "errorCode": StringAttribute, //
        "error": StringAttribute, //
        "errorCodeDateTime": StringAttribute, //
        "errorCodeEditUser": StringAttribute, //
        "storeNumber": StringAttribute, //
        "backingTable_RetailPosBatchTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
    .registerPath("commerce_cash.retailposbatch");
  }
}
mixin(EntityCalls!("RetailPosBatchEntity"));

version(test_model_hcm) {
  unittest {
    assert(RetailPosBatchEntity);
  
    auto entity = RetailPosBatchEntity;
  }
}