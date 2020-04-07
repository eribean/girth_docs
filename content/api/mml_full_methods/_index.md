---
title: Legacy Marginal Likelihood Methods
linkTitle: Legacy Marginal Likelihood 
date: 2020-04-04
type: docs
weight: 5
description: >
  Legacy Maximum marginal likelihood estimation methods.
---

### Notes:

These methods jointly estimate the item parameters using non-separable
optimization methods. When possible, use the regular maximum marginal
likelihood methods, they will be **much** faster. The ```onepl_full``` 
method is particularly slow.