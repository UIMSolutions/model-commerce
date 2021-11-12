module models.commerce.channels.retails.attributes.value;

@safe:
import models.commerce;

// 
class DOPTRetailChannelAttributeValue : DOOPEntity {
  this() { super();
    this.attributes([
      "RetailChannelId": OOPAttributeUUID.descriptions(["en":""]), 
      "AttributeGroupName": OOPAttributeString.descriptions(["en":""]), 
      "AttributeName": OOPAttributeString.descriptions(["en":""]), 
      "AttributeTypeName": OOPAttributeString.descriptions(["en":""]), 
      "TextValue": OOPAttributeString.descriptions(["en":""]), 
      "CurrencyCode": OOPAttributeString.descriptions(["en":""]), 
      "CurrencyValue": OOPAttributeString.descriptions(["en":""]), 
      "DateTimeValue": OOPAttributeString.descriptions(["en":""]), 
      "DecimalValue": OOPAttributeString.descriptions(["en":""]), 
      "IntegerValue": OOPAttributeString.descriptions(["en":""]), 
      "BooleanValue": OOPAttributeString.descriptions(["en":""]), 
      "backingTable_RetailChannelTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]), 
    ]);
  }

  override string entityClass() { return "optRetailChannelAttributeValue"; }
  override string entityClasses() { return "optRetailChannelAttributeValues"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailChannelAttributeValue() { return new DOPTRetailChannelAttributeValue; } 
auto OPTRetailChannelAttributeValue(Json json) { return new DOPTRetailChannelAttributeValue(json); } 

unittest {
  version(uim_entities) {
    assert(OPTRetailChannelAttributeValue);

  auto entity = OPTRetailChannelAttributeValue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}