module models.commerce.channels.retails.category_attribute;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCategoryAttribute : DOOPEntity {
  this() { super();
    this.attributes([
      "RetailChannelId": OOPAttributeUUID.descriptions(["en":""]),
      "ProductCategoryHierarchyName": OOPAttributeString.descriptions(["en":""]),
      "ProductCategoryName": OOPAttributeString.descriptions(["en":""]),
      "AttributeName": OOPAttributeString.descriptions(["en":""]),
      "AttributeTypeName": OOPAttributeString.descriptions(["en":""]),
      "Relationship_ChannelRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_ProductCategoryRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_AttributeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_RetailChannelCategoryAttributeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "optRetailChannelCategoryAttribute"; }
  override string entityClasses() { return "optRetailChannelCategoryAttributes"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailChannelCategoryAttribute() { return new DOPTRetailChannelCategoryAttribute; } 
auto OPTRetailChannelCategoryAttribute(Json json) { return new DOPTRetailChannelCategoryAttribute(json); } 

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