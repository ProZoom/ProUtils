.class public Lcom/seuic/scanner/util/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static mSoundPool:Landroid/media/SoundPool;

.field private static mSourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/seuic/scanner/util/SoundPlayer;->mSourceId:I

    .line 42
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x64

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 43
    return-void
.end method

.method private static loadFile(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget v3, Lcom/seuic/scanner/util/SoundPlayer;->mSourceId:I

    if-eqz v3, :cond_0

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 89
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 92
    .local v1, "descriptor":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v3, "scan.ogg"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 94
    sget-object v3, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    sput v3, Lcom/seuic/scanner/util/SoundPlayer;->mSourceId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "SoundPlayer"

    const-string v4, "Audio file not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static playSound(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    :try_start_0
    sget-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/seuic/scanner/util/SoundPlayer;->loadFile(Landroid/content/Context;)V

    .line 55
    const/16 v8, 0x3e8

    .local v8, "i":I
    :goto_0
    if-lez v8, :cond_1

    .line 56
    sget-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/seuic/scanner/util/SoundPlayer;->mSourceId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 63
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 64
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SoundPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 65
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/seuic/scanner/util/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/seuic/scanner/util/SoundPlayer;->mSourceId:I

    .line 79
    :cond_0
    return-void
.end method
