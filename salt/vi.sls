#vi:
#  pkg.installed: []
#    {% if grains['os'] == 'RedHat' %}
#    - name: vim-enhanced
#    {% elif grains['os'] == 'Debian' %}
#    - name: vim
#    {% endif %}

#vi:
#  pkg.installed
vim:
  pkg:
    - installed
    {% if grains['os'] == 'RedHat' %}
    - name: vim-enhanced
#    {% elif grains['os'] == 'Debian' %}
#    - name: vim
    {% endif %}
