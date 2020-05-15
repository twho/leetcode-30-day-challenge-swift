//
//  MaySolDay14.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/implement-trie-prefix-tree/
class MaySolDay14 {
    
    class Trie: TrieProtocol {
        let root: TrieNode

        required init() {
            root = TrieNode(Character("0"))
        }
        
        func insert(_ word: String) {
            var node = root
            for ch in word {
                if node.children[ch] == nil {
                    node.children[ch] = TrieNode(ch)
                }
                node = node.children[ch]!
            }
            
            node.children[Character("0")] = TrieNode(Character("0"))
        }
        
        func search(_ word: String) -> Bool {
            var node = root
            for ch in word {
                if node.children[ch] != nil {
                    node = node.children[ch]!
                } else {
                    return false
                }
            }
            return node.children[Character("0")] != nil
        }
        
        func startsWith(_ prefix: String) -> Bool {
            var node = root
            for ch in prefix {
                if node.children[ch] != nil {
                    node = node.children[ch]!
                } else {
                    return false
                }
            }
            return true
        }
    }

    class TrieNode {
        var char: Character
        var children = [Character : TrieNode]()
        
        init(_ char: Character) {
            self.char = char
        }
    }
}

protocol TrieProtocol {
    // Initialize your data structure here.
    init()
    // Inserts a word into the trie.
    func insert(_ word: String)
    // Returns if the word is in the trie.
    func search(_ word: String) -> Bool
    // Returns if there is any word in the trie that starts with the given prefix
    func startsWith(_ prefix: String) -> Bool
}
