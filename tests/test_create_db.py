# tests/test_create_db.py
import pytest
from unittest.mock import patch, MagicMock

from scripts.database.create_db import create_db


@patch("scripts.database.create_db.psycopg2")
@patch("scripts.database.create_db.get_db_config")
def test_create_db_success(mock_get_config, mock_psycopg2):
    mock_get_config.return_value = {
        "DB_NAME": "testdb",
        "DB_USER": "elshaday",
        "DB_PASSWORD": "pass",
        "DB_HOST": "localhost",
        "DB_PORT": "5432",
    }

    mock_conn = MagicMock()
    mock_psycopg2.connect.return_value = mock_conn

    conn = create_db()

    assert conn == mock_conn
    mock_psycopg2.connect.assert_called_once()


@patch("scripts.database.create_db.psycopg2")
@patch("scripts.database.create_db.get_db_config")
def test_create_db_connection_error(mock_get_config, mock_psycopg2):
    mock_get_config.return_value = {"DB_NAME": "bad"}
    mock_psycopg2.connect.side_effect = Exception("Connection failed")

    with pytest.raises(ConnectionError, match="Error connecting to PostgreSQL"):
        create_db()
