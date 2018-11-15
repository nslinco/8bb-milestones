﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.Data;
using Mono.Data.Sqlite;

public class ScoreManager : MonoBehaviour {

    private string connectionString;

	// Use this for initialization
	void Start () 
    {
        connectionString = "URI=file" + Application.dataPath + "/test.sqlite";
        GetScores();

	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void GetScores()
    {
        using (IDbConnection dbConnection = new SqliteConnection(connectionString))
        {
            dbConnection.Open();

            using (IDbCommand dbCmd = dbConnection.CreateCommand())
            {
                string sqlQuery = "select * form highScores";
                dbCmd.CommandText = sqlQuery;
                using (IDataReader reader = dbCmd.ExecuteReader())
                {
                    while(reader.Read())
                    {
                        Debug.Log(reader.GetInt32(0) + reader.GetString(1));
                    }
                    dbConnection.Close();
                    reader.Close();
                }
            }
        }

    }
}
