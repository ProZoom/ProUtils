.class public Lcom/pax/idcard/IdCardReader;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "IdCardReader"

.field private static instance:Lcom/pax/idcard/IdCardReader;


# instance fields
.field private retCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pax/idcard/IdCardReader;->instance:Lcom/pax/idcard/IdCardReader;

    const-string v0, "paxidcardjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pax/idcard/IdCardReader;->retCode:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pax/idcard/IdCardReader;
    .locals 2

    const-class v1, Lcom/pax/idcard/IdCardReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pax/idcard/IdCardReader;->instance:Lcom/pax/idcard/IdCardReader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pax/idcard/IdCardReader;

    invoke-direct {v0}, Lcom/pax/idcard/IdCardReader;-><init>()V

    sput-object v0, Lcom/pax/idcard/IdCardReader;->instance:Lcom/pax/idcard/IdCardReader;

    :cond_0
    sget-object v0, Lcom/pax/idcard/IdCardReader;->instance:Lcom/pax/idcard/IdCardReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativePiccCmd(I[B[I[B)I
.end method


# virtual methods
.method public exePiccCommand([B)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_2

    :cond_0
    iput v2, p0, Lcom/pax/idcard/IdCardReader;->retCode:I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/16 v1, 0x110

    new-array v2, v2, [I

    aput v1, v2, v4

    new-array v1, v1, [B

    array-length v3, p1

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/pax/idcard/IdCardReader;->nativePiccCmd(I[B[I[B)I

    move-result v3

    iput v3, p0, Lcom/pax/idcard/IdCardReader;->retCode:I

    iget v3, p0, Lcom/pax/idcard/IdCardReader;->retCode:I

    if-nez v3, :cond_1

    aget v2, v2, v4

    new-array v0, v2, [B

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/pax/idcard/IdCardReader;->retCode:I

    return v0
.end method
