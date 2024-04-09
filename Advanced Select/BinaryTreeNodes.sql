-- Binary Tree Nodes

SELECT 
N, CASE
WHEN P IS NULL THEN "Root"
WHEN N NOT IN (
    SELECT P
    FROM BST
    WHERE P IS NOT NULL
) THEN "Leaf"
ELSE "Inner"
END AS Node_type
FROM BST
ORDER BY N;

/*
Node is a root node if there is no parent for him
Node is a leaf node if he is not parent of other node (except root node)
Node is a inner node if he is having both child and parent node
*/