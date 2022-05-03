module models.commerce.channels.retails.customer_addressbook;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCustomerAddressBook : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelCustomerAddressBook"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AddressBook": StringAttributeClass, // 
        "AddressBookName": StringAttributeClass, // 
        "RetailChannelId": UUIDAttributeClass, // 
        "Relationship_RetailStoreEntityRelationshipId": UUIDAttributeClass, // 
        "Relationship_RetailOnlineChannelEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_RetailStoreAddressBookRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("commerce_retailchannelcustomeraddressbooks");
  }
}
mixin(EntityCalls!("OPTRetailChannelCustomerAddressBook"));

unittest {
  version(uim_entities) {
    assert(OPTRetailChannelCustomerAddressBook);

  auto entity = OPTRetailChannelCustomerAddressBook;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}