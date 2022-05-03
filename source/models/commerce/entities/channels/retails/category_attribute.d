module models.commerce.channels.retails.category_attribute;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCategoryAttribute : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelCategoryAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "RetailChannelId": UUIDAttributeClass, // 
        "ProductCategoryHierarchyName": StringAttributeClass, // 
        "ProductCategoryName": StringAttributeClass, // 
        "AttributeName": StringAttributeClass, // 
        "AttributeTypeName": StringAttributeClass, // 
        "Relationship_ChannelRelationshipId": UUIDAttributeClass, // 
        "Relationship_ProductCategoryRelationshipId": UUIDAttributeClass, // 
        "Relationship_AttributeRelationshipId": UUIDAttributeClass, // 
        "backingTable_RetailChannelCategoryAttributeRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("commerce_retailchannelcategoryattributes");
  }
}
mixin(EntityCalls!("OPTRetailChannelCategoryAttribute"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(OPTRetailChannelCategoryAttribute);

  auto entity = OPTRetailChannelCategoryAttribute;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}