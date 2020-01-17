<p align="center">
    <img alt="terraform-recipes logo" src="https://www.terraform.io/assets/images/og-image-8b3e4f7d.png" width="150" />
    <h3 align="center">Terraform Recipes.</h3>
    <p align="center">
        <a href="https://github.com/Clivern/terraform-recipes/blob/master/LICENSE"><img src="https://img.shields.io/badge/LICENSE-MIT-orange.svg"></a>
    </p>
</p>


## Documentation

Run docker & docker-compose on digitalocean:

```zsh
$ cd do-docker
$ terraform init

# Get SSH Fingerprint
$ ssh-keygen -lf ~/.ssh/id_rsa.pub

$ terraform plan \
    -var "do_token=$YOUR_TOKEN" \
    -var "pub_key=~/.ssh/id_rsa.pub" \
    -var "pvt_key=~/.ssh/id_rsa" \
    -var "ssh_fingerprint=$SSH_FINGERPRINT" \
    -var "droplet_name=$DROPLET_NAME"


$ terraform apply \
    -var "do_token=$YOUR_TOKEN" \
    -var "pub_key=~/.ssh/id_rsa.pub" \
    -var "pvt_key=~/.ssh/id_rsa" \
    -var "ssh_fingerprint=$SSH_FINGERPRINT" \
    -var "droplet_name=$DROPLET_NAME"

$ terraform show terraform.tfstate
```


## Bug tracker

If you have any suggestions, bug reports, or annoyances please report them to our issue tracker at https://github.com/Clivern/terraform-recipes/issues


## Security Issues

If you discover a security vulnerability within terraform-recipes, please send an email to [hello@clivern.com](mailto:hello@clivern.com)


## Contributing

We are an open source, community-driven project so please feel free to join us. see the [contributing guidelines](CONTRIBUTING.md) for more details.


## License

© 2019, Clivern. Released under [MIT License](https://opensource.org/licenses/mit-license.php).

**terraform-recipes** is authored and maintained by [@Clivern](http://github.com/Clivern).
