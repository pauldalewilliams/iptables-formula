================
iptables-formula
================

A saltstack formula for iptables.  This formula manages iptables through the use of files
instead of the salt modules in order to make it idempotent.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``iptables``
------------

Installs the iptables package, starts the associated iptables service, and configures the rules.
