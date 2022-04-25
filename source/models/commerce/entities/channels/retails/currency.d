module models.commerce.channels.retails.currency;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCurrency : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelCurrency"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "Channel": OOPAttributeString.descriptions(["en":""]),
        "CurrencyCode": OOPAttributeString.descriptions(["en":""]),
        "OMOperatingUnitNumber": OOPAttributeNumber.descriptions(["en":""]),
        "OMOperatingUnitId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_RetailChannelCurrencyRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("commerce_retailchannelcurrencies");
  }
}
mixin(EntityCalls!("OPTRetailChannelCurrency"));

unittest {
  version(uim_entities) {
    assert(OPTRetailChannelCurrency);

  auto entity = OPTRetailChannelCurrency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}