.class public Lcom/ctsi/Tools/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileReader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v7, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v3, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 17
    .local v8, "strFileName":[Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 19
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v5, v9, :cond_1

    .line 40
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .end local v8    # "strFileName":[Ljava/io/File;
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 20
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v8    # "strFileName":[Ljava/io/File;
    :cond_1
    :try_start_1
    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 21
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v9, v8, v5

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    .local v4, "fis":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 27
    .local v1, "c":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 30
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 19
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "c":Ljava/lang/String;
    .end local v4    # "fis":Ljava/io/InputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 28
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "c":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 35
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "c":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/InputStream;
    .end local v5    # "i":I
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v8    # "strFileName":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 37
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 38
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
