from setuptools import setup

setup(
    name='foo',
    version='0.0.1',
    install_requires=[
        'apache-airflow[aws,celery,postgres,redis] >= 1.10.11',
        'airflow_multi_dagrun',
        'airflow-prometheus-exporter'
    ]
)
