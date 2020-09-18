func reverse( llist: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
    var head:DoublyLinkedListNode?
    var tempNode:DoublyLinkedListNode?
    var current = llist
    while current != nil {
        tempNode = current?.next
        current?.next = current?.prev 
        current?.prev = tempNode  
        head = current    
        current = tempNode
    }

    return head

}
