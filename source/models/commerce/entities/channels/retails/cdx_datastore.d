module models.commerce.channels.retails.cdx_datastore;

@safe:
import models.commerce;

// 
class DOPTRetailCDXDataStoreChannel : DOOPEntity {
  mixin(EntityThis!("OPTRetailCDXDataStoreChannel"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "ChannelId": OOPAttributeUUID.descriptions(["en":""]),
        "ChannelDatabaseId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_RetailCDXDataStoreChannelRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("commerce_retailcdxdatastorechannels");
  }
}
mixin(EntityCalls!("OPTRetailCDXDataStoreChannel"));

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