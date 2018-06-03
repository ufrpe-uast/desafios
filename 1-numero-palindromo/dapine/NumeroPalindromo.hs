module Main where

palindrome :: Integer -> Bool
palindrome x = (show x) == (reverse' $ show x)

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

main = do
    print $ palindrome 121
    print $ palindrome (-121)
    print $ palindrome 100001
    print $ palindrome 42424242
