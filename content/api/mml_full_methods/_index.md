---
title: Maximum Marginal Likelihood Methods
linkTitle: Marginal Likelihood Full
date: 2020-04-04
type: docs
weight: 5
description: >
  Maximum marginal likelihood estimation methods.
---

### Notes:

These methods jointly estimate the item parameters using non-sepearable
optimization methods. When possible, use the separable maximum marginal
likelihood methods, they will be **much** faster. The ```onepl_full``` 
method is particularly slow.