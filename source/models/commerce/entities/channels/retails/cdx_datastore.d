module models.commerce.channels.retails.cdx_datastore;

@safe:
import models.commerce;

// 
class DOPTRetailCDXDataStoreChannel : DOOPEntity {
  mixin(EntityThis!("OPTRetailCDXDataStoreChannel"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ChannelId": UUIDAttributeClass, // 
        "ChannelDatabaseId": UUIDAttributeClass, // 
        "backingTable_RetailCDXDataStoreChannelRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("commerce_retailcdxdatastorechannels");
  }
}
mixin(EntityCalls!("OPTRetailCDXDataStoreChannel"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(OPTRetailCDXDataStoreChannel);

  auto entity = OPTRetailCDXDataStoreChannel;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}