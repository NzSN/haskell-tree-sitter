module TreeSitter.Wgsl
( tree_sitter_wgsl,
  getNodeTypesPath,
  getTestCorpusDir
) where

import Foreign.Ptr
import TreeSitter.Language
import Paths_tree_sitter_wgsl

foreign import ccall unsafe "vendor/tree-sitter-wgsl/src/parser.c tree_sitter_wgsl" tree_sitter_wgsl :: Ptr Language

getNodeTypesPath :: IO FilePath
getNodeTypesPath = getDataFileName "vendor/tree-sitter-wgsl/src/node-types.json"

getTestCorpusDir :: IO FilePath
getTestCorpusDir = getDataFileName ""
