module models.commerce.channels.retails.attributes.value;

@safe:
import models.commerce;

// 
class DOPTRetailChannelAttributeValue : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelAttributeValue"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "RetailChannelId": UUIDAttributeClass, //  
        "AttributeGroupName": StringAttributeClass, //  
        "AttributeName": StringAttributeClass, //  
        "AttributeTypeName": StringAttributeClass, //  
        "TextValue": StringAttributeClass, //  
        "CurrencyCode": StringAttributeClass, //  
        "CurrencyValue": StringAttributeClass, //  
        "DateTimeValue": StringAttributeClass, //  
        "DecimalValue": StringAttributeClass, //  
        "IntegerValue": StringAttributeClass, //  
        "BooleanValue": StringAttributeClass, //  
        "backingTable_RetailChannelTableRelationshipId": UUIDAttributeClass, //  
      ])
      .registerPath("commerce_retailchannelattributevalues");
  }
}
mixin(EntityCalls!("OPTRetailChannelAttributeValue"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(OPTRetailChannelAttributeValue);

  auto entity = OPTRetailChannelAttributeValue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}