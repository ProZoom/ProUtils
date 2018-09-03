.class public Lcom/sunrise/reader/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sunrise/reader/j;

.field private b:Landroid/content/Context;

.field private c:Landroid/hardware/usb/UsbManager;

.field private d:Landroid/app/PendingIntent;

.field private e:Landroid/hardware/usb/UsbDeviceConnection;

.field private f:Landroid/hardware/usb/UsbEndpoint;

.field private g:Landroid/hardware/usb/UsbEndpoint;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/m;->h:I

    iput-object p1, p0, Lcom/sunrise/reader/m;->b:Landroid/content/Context;

    return-void
.end method

.method private a([B)I
    .locals 9

    const/16 v8, 0x64

    const/4 v3, -0x1

    const/16 v7, 0x40

    const/4 v1, 0x0

    new-array v4, v7, [B

    array-length v0, p1

    iget-object v2, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v2, p1

    if-ge v2, v7, :cond_2

    array-length v0, p1

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/sunrise/reader/m;->g:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0, v2, v4, v7, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-eq v0, v7, :cond_0

    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    :goto_1
    array-length v5, p1

    if-gt v0, v5, :cond_0

    if-ge v2, v7, :cond_3

    invoke-static {p1, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iget-object v5, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v5, :cond_4

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-static {p1, v0, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/sunrise/reader/m;->g:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    if-gtz v5, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v2, v2, -0x40

    goto :goto_1
.end method

.method private a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8

    const/16 v7, 0x80

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    if-ne v5, v7, :cond_3

    iput-object v3, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    if-nez v5, :cond_4

    iput-object v3, p0, Lcom/sunrise/reader/m;->g:Landroid/hardware/usb/UsbEndpoint;

    :cond_4
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    if-ne v3, v7, :cond_7

    iput-object v4, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sunrise/reader/m;->g:Landroid/hardware/usb/UsbEndpoint;

    if-nez v3, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    if-nez v3, :cond_5

    iput-object v4, p0, Lcom/sunrise/reader/m;->g:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sunrise/reader/m;->c:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "hidreader"

    const-string v3, "open SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    goto :goto_0

    :cond_9
    const-string v1, "hidreader"

    const-string v2, "open FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    goto :goto_0
.end method

.method private e()[B
    .locals 11

    const/16 v10, 0x1388

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x40

    new-array v5, v3, [B

    move v1, v4

    move v2, v4

    :goto_0
    const/16 v6, 0x2710

    if-ge v2, v6, :cond_2

    iget-object v1, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    array-length v7, v5

    invoke-virtual {v1, v6, v5, v7, v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v6, v1, 0x5

    new-array v1, v6, [B

    if-ge v6, v3, :cond_4

    invoke-static {v5, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v5, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    :goto_2
    if-gt v2, v6, :cond_6

    new-array v5, v3, [B

    iget-object v7, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v8, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    array-length v9, v5

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    if-ne v7, v3, :cond_0

    sub-int v7, v6, v2

    if-ge v7, v3, :cond_5

    invoke-static {v5, v4, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    add-int/lit8 v2, v2, 0x40

    goto :goto_2

    :cond_5
    invoke-static {v5, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private f()[B
    .locals 11

    const/16 v10, 0x1388

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x40

    new-array v4, v2, [B

    move v0, v3

    move v1, v3

    :goto_0
    const/16 v5, 0x2710

    if-ge v1, v5, :cond_2

    iget-object v0, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_1

    new-array v0, v9, [B

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    array-length v6, v4

    invoke-virtual {v0, v5, v4, v6, v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eq v0, v2, :cond_4

    new-array v0, v9, [B

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int v5, v0, v1

    new-array v0, v5, [B

    if-ge v5, v2, :cond_5

    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    invoke-static {v4, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    :goto_2
    if-gt v1, v5, :cond_0

    new-array v4, v2, [B

    iget-object v6, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v6, :cond_6

    new-array v0, v9, [B

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v7, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    array-length v8, v4

    invoke-virtual {v6, v7, v4, v8, v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v6

    if-eq v6, v2, :cond_7

    new-array v0, v9, [B

    goto :goto_1

    :cond_7
    sub-int v6, v5, v1

    if-ge v6, v2, :cond_8

    invoke-static {v4, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    add-int/lit8 v1, v1, 0x40

    goto :goto_2

    :cond_8
    invoke-static {v4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/m;->h:I

    return v0
.end method

.method public a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 7

    const/16 v6, 0x40

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/sunrise/u/a;->f()B

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, -0x70

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, -0x5c

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, -0x5b

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, -0x6f

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v6, :cond_4

    :goto_1
    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_5

    const/16 v2, 0x40

    new-array v2, v2, [B

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ge v3, v6, :cond_3

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Lcom/sunrise/reader/m;->a([B)I

    :goto_2
    add-int/lit8 v1, v1, 0x40

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Lcom/sunrise/reader/m;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "OTGCardReader"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sunrise/reader/m;->a([B)I

    :cond_5
    invoke-direct {p0}, Lcom/sunrise/reader/m;->e()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->b([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READER_STATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iput p1, p0, Lcom/sunrise/reader/m;->h:I

    iget-object v0, p0, Lcom/sunrise/reader/m;->a:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/m;->a:Lcom/sunrise/reader/j;

    invoke-interface {v0, p1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/m;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Lcom/sunrise/reader/m;->f:Landroid/hardware/usb/UsbEndpoint;

    iput-object v0, p0, Lcom/sunrise/reader/m;->g:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method public c()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/m;->b:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/sunrise/reader/m;->c:Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/sunrise/reader/m;->c:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const/16 v4, 0x2015

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lcom/sunrise/reader/m;->c:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sunrise/reader/m;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sunrise/reader/m;->b:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/sunrise/reader/m;->d:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/sunrise/reader/m;->c:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/sunrise/reader/m;->d:Landroid/app/PendingIntent;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public d()[B
    .locals 2

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    const/16 v1, -0x6f

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v0

    const/16 v1, -0x6f

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/m;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send_cmd_to_reader([B)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sunrise/reader/m;->a([B)I

    invoke-direct {p0}, Lcom/sunrise/reader/m;->f()[B

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recive from reader fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v2, v3, v4}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
