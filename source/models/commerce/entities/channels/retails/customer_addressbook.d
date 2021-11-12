module models.commerce.channels.retails.customer_addressbook;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCustomerAddressBook : DOOPEntity {
  this() { super();
    this.attributes([
      "AddressBook": OOPAttributeString.descriptions(["en":""]),
      "AddressBookName": OOPAttributeString.descriptions(["en":""]),
      "RetailChannelId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_RetailStoreEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_RetailOnlineChannelEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_RetailStoreAddressBookRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "optRetailChannelCustomerAddressBook"; }
  override string entityClasses() { return "optRetailChannelCustomerAddressBooks"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailChannelCustomerAddressBook() { return new DOPTRetailChannelCustomerAddressBook; } 
auto OPTRetailChannelCustomerAddressBook(Json json) { return new DOPTRetailChannelCustomerAddressBook(json); } 

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