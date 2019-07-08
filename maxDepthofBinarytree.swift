
public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
  }

func maxDepth(_ root: TreeNode?) -> Int {
          if (root == nil){
              return 0;
          } 
        var left = maxDepth(root?.left);
        var right = maxDepth(root?.right);
        return max(left, right) + 1;
    }
