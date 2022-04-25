module models.commerce.channels.retails.category_attribute;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCategoryAttribute : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelCategoryAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "RetailChannelId": OOPAttributeUUID.descriptions(["en":""]),
        "ProductCategoryHierarchyName": OOPAttributeString.descriptions(["en":""]),
        "ProductCategoryName": OOPAttributeString.descriptions(["en":""]),
        "AttributeName": OOPAttributeString.descriptions(["en":""]),
        "AttributeTypeName": OOPAttributeString.descriptions(["en":""]),
        "Relationship_ChannelRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_ProductCategoryRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_AttributeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_RetailChannelCategoryAttributeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("commerce_retailchannelcategoryattributes");
  }
}
mixin(EntityCalls!("OPTRetailChannelCategoryAttribute"));

unittest {
  version(uim_entities) {
    assert(OPTRetailChannelCategoryAttribute);

  auto entity = OPTRetailChannelCategoryAttribute;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}