os-packages Cookbook
====================
Install OS Packages with the supported OSs package manager.

Requirements
------------
RHEL -compatible platform (for now)

Attributes
----------
Needs both package name and action.

"os-packages": {
  "rhel": {
    "dnsmasq": "install"
  }
}

Usage
-----
#### os-packages::default
e.g.
Just include `os-packages` in your node's `run_list` and define which packages to install or remove:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[os-packages]"
  ]
}
```

Contributing
------------
e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Tom Molin
