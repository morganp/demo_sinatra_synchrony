
Demo Sinatra-Synchrony
==================

[sinatra-synchrony][] is an easy to install extension to [Sinatra][] which improves concurrency. This allows it to continue serving webpages to other users while other requests are waiting for io operations.

In this demo project I have setup 4 Sinatra applications and set 4 routes to them in the config.ru. With and with out sinatra-synchrony and with and without accessing a sqlite database.

[Sinatra]: 
[sinatra-synchrony]: https://github.com/kyledrake/sinatra-synchrony

Install
========

    git clone ?
    cd demo_sinatra_synchrony
    budle install
    run_thin_modular.sh

Test with

    ab -c 100 -n 16000 http://127.0.0.1:4567/app1
    ab -c 100 -n 16000 http://127.0.0.1:4567/app1synchrony

Results
=======




