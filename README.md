# Terraform Live

This is the environment specific configuration for terraform based
infrastructure that hooks all the modules together to actually provision
resources.

The structure is:

```
nonprod
  |- <region>
     |- <environment_name>
```

## Provisioning

First, install [Terragrunt](https://github.com/gruntwork-io/terragrunt) and
Terraform.

Then, run:

```
cd nonprod/<region>/<environment_name>
terragrunt plan-all
```

This may fail initially, because some modules depend on others already existing.
The `apply-all` should run successfully as it creates modules in the correct
order.

## Testing

After you have provisioned your resources, run the following using
[Bundler](http://bundler.io/):

```
bundle install
bundle exec rake spec
```

This will run the [awspec](https://github.com/k1LoW/awspec) tests against your
environment.
