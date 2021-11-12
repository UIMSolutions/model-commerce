module models.commerce.channels.retails.currency;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCurrency : DOOPEntity {
  this() { super();
    this.attributes([
      "Channel": OOPAttributeString.descriptions(["en":""]),
      "CurrencyCode": OOPAttributeString.descriptions(["en":""]),
      "OMOperatingUnitNumber": OOPAttributeNumber.descriptions(["en":""]),
      "OMOperatingUnitId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_RetailChannelCurrencyRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "optRetailChannelCurrency"; }
  override string entityClasses() { return "optRetailChannelCurrencies"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailChannelCurrency() { return new DOPTRetailChannelCurrency; } 
auto OPTRetailChannelCurrency(Json json) { return new DOPTRetailChannelCurrency(json); } 

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