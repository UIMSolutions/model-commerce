module models.commerce.channels.retails.cdx_datastore;

@safe:
import models.commerce;

// 
class DOPTRetailCDXDataStoreChannel : DOOPEntity {
  this() { super();
    this.attributes([
      "ChannelId": OOPAttributeUUID.descriptions(["en":""]),
      "ChannelDatabaseId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_RetailCDXDataStoreChannelRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "optRetailCDXDataStoreChannel"; }
  override string entityClasses() { return "optRetailCDXDataStoreChannels"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailCDXDataStoreChannel() { return new DOPTRetailCDXDataStoreChannel; } 
auto OPTRetailCDXDataStoreChannel(Json json) { return new DOPTRetailCDXDataStoreChannel(json); } 

unittest {
  version(uim_entities) {
    assert(OPTRetailCDXDataStoreChannel);

  auto entity = OPTRetailCDXDataStoreChannel;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}