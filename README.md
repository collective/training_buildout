# Backend for the Mastering Plone Development Training

The training documentation can be found at [training.plone.org](https://training.plone.org)

TODO The following instructions are here for a quick start.
Remove them as soon as possible and link to the corresponding updated section on training.plone.org.

Create a folder `backend` with a virtual Python environment.
Install prerequisites and run mxdev.

```shell
python -m venv venv
source venv/bin/activate
pip install -U pip wheel mxdev
mxdev -c mx.ini
```

Install your Plone packages, core and add-ons:

```shell
pip install -r requirements-mxdev.txt
```

Generate your Zope configuration with cookiecutter.
This is also necessary after changes of `instance.yaml`.

```shell
cookiecutter -f --no-input --config-file instance.yaml https://github.com/plone/cookiecutter-zope-instance
```

Run Zope:

```shell
runwsgi instance/etc/zope.ini
```

Voilà, your Plone is up and running on http://localhost:8080.

## Troubleshooting

If you encounter bug "The 'Paste' distribution was not found and is required by the application":

```shell
source venv/bin/activate
runwsgi instance/etc/zope.ini
```

