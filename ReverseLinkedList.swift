/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

    func reverseList(_ head: ListNode?) -> ListNode? {
        return   iterativeMethod(head:head)
    }
    
    func iterativeMethod(head: ListNode?) -> ListNode? {
        var prev:ListNode? = nil;
        var curr = head;
        var temp:ListNode? = nil;
        while (curr != nil) {
            temp = curr?.next;
            curr?.next = prev;
            prev = curr;
            curr = temp;
        }
        return prev;
    }
    
    func recursiveMethod(head: ListNode?) -> ListNode? {
        if (head == nil || head?.next == nil){
           return head; 
        } 
        var p = recursiveMethod(head:head?.next);
        head?.next?.next = head;
        head?.next = nil;
        return p;
    }
