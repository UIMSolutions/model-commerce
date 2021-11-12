module models.commerce.channels.retails.attributes.group;

@safe:
import models.commerce;

// 
class DOPTRetailChannelAttributeGroup : DOOPEntity {
  this() { super();
    this.attributes([
      "ttributeGroup": OOPAttributeString.descriptions(["en":""]),
      "channel": OOPAttributeString.descriptions(["en":""]),
      "attributeModifier": OOPAttributeString.descriptions(["en":""]),
      "attributeGroupName": OOPAttributeString.descriptions(["en":""]),
      "omOperatingUnitNumber": OOPAttributeNumber.descriptions(["en":""]),
      "omOperatingUnitId": OOPAttributeUUID.descriptions(["en":""]),
      "attributeAppliesToModifier": OOPAttributeString.descriptions(["en":""]),
      "relationship_RetailOnlineChannelEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_RetailChannelAttributeGroupRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "optRetailChannelAttributeGroup"; }
  override string entityClasses() { return "optRetailChannelAttributeGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailChannelAttributeGroup() { return new DOPTRetailChannelAttributeGroup; } 
auto OPTRetailChannelAttributeGroup(Json json) { return new DOPTRetailChannelAttributeGroup(json); } 

unittest {
  version(uim_entities) {
    assert(OPTRetailChannelAttributeGroup);

  auto entity = OPTRetailChannelAttributeGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}