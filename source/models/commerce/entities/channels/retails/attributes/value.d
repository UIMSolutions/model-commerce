module models.commerce.channels.retails.attributes.value;

@safe:
import models.commerce;

// 
class DOPTRetailChannelAttributeValue : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelAttributeValue"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
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
      ])
      .registerPath("commerce_retailchannelattributevalues");
  }
}
mixin(EntityCalls!("OPTRetailChannelAttributeValue"));

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