---
title: Quick Start
linkTitle: Quick Start
date: 2020-03-22
weight: 1
description: >
  Getting started with Girth.
---

## Installation

The easiest way to get started is to install girth via pip and import the module:

```python
pip install girth --upgrade
```

```python
import girth
```

If you would like to build girth from source, check out the repository and install it

```
git clone https://github.com/eribean/girth.git
cd girth
python setup.py install
```

## Data format

IRT response data should be stored in a 2D [numpy](https://numpy.org/) array.  This array holds the measured responses with the number of rows (vertical) equal to the number of items in the test, and the number of columns (horizontal) equal to the number of participants in the test.

{{< figure src="/images/girth_data.jpg" width=200 height=300 title="Array Format" >}}

It is up to the user to manipulate the data into this standardized format.

{{% alert title="Warning" color="warning" %}}
Missing data is supported for dichotomous measurements only.
Use NAN (numpy.nan) to represent missing values.
{{% /alert %}}

