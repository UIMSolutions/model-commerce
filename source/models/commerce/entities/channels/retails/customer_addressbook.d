module models.commerce.channels.retails.customer_addressbook;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCustomerAddressBook : DOOPEntity {
  mixin(OOPEntityThis!("OPTRetailChannelCustomerAddressBook"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "AddressBook": OOPAttributeString.descriptions(["en":""]),
        "AddressBookName": OOPAttributeString.descriptions(["en":""]),
        "RetailChannelId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_RetailStoreEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_RetailOnlineChannelEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_RetailStoreAddressBookRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("commerce_retailchannelcustomeraddressbooks");
  }
}
mixin(OOPEntityCalls!("OPTRetailChannelCustomerAddressBook"));

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