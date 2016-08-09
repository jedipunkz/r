# R Cookbook

This chef cookbook make you controll packaging of R.
R is a free software environment for statistical computing and graphics.

## Requirements

none.

### Platforms

I tested this cookbook on these platforms.

- Ubuntu 14.04
- Ubuntu 16.04

### Chef

- Chef 11.0 or later

## Attributes

TODO: List your cookbook attributes here.

e.g.
### r::default

attributes for installing from repository

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['r']['package']</tt></td>
    <td>String</td>
    <td>Package name</td>
    <td><tt>None</tt></td>
  </tr>
  <tr>
    <td><tt>['r']['repos']</tt></td>
    <td>String</td>
    <td>Repository URL of R packages</td>
    <td><tt>'https://cran.ism.ac.jp/'</tt></td>
  </tr>
</table>

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['r']['package']</tt></td>
    <td>String</td>
    <td>Package name</td>
    <td><tt>None</tt></td>
  </tr>
  <tr>
    <td><tt>['r']['url']</tt></td>
    <td>String</td>
    <td>URL of R package source</td>
    <td><tt>None</tt></td>
  </tr>
</table>

## Usage

### r::default

e.g.
Just include `r` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[r]"
  ]
}
```

## Contributing

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: Tomokazu HIRAI
License: MIT License

