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

attributes for installing from repository.

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

attributes for installing from source.

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

Just include `r` in your cookbook:

```ruby
include_recipe "r"

r_package 'install rJava package from repo' do
  package 'rJava'
  action :install
end

r_source 'install Rhipe package from source' do
  package 'Rhipe'
  url 'http://ml.stat.purdue.edu/rhipebin/Rhipe_0.75.2_cdh5.tar.gz'
  action :install
end

r_package 'remove rJava package' do
  package 'rJava'
  action :remove
end
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

