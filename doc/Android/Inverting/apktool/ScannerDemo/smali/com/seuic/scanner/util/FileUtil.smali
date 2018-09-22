.class public Lcom/seuic/scanner/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final APP_TEMP_DIRECTORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PDATest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/FileUtil;->APP_TEMP_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    :cond_0
    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "parentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 75
    .end local v0    # "parentFile":Ljava/io/File;
    :goto_0
    return v1

    .line 73
    .restart local v0    # "parentFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "parentFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method
