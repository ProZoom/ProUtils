.class public Lcom/pax/api/model/FILE_INFO;
.super Ljava/lang/Object;


# instance fields
.field public attr:B

.field public fid:I

.field private fidB:B

.field public length:I

.field public name:Ljava/lang/String;

.field private nameByte:[B

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/FILE_INFO;->nameByte:[B

    return-void
.end method

.method private toInt(B)I
    .locals 0
    .param p1, "b"    # B

    .prologue
    if-ltz p1, :cond_0

    .end local p1    # "b":B
    :goto_0
    return p1

    .restart local p1    # "b":B
    :cond_0
    add-int/lit16 p1, p1, 0x100

    goto :goto_0
.end method


# virtual methods
.method public serialFromBuffer([B)V
    .locals 3
    .param p1, "bb"    # [B

    .prologue
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->fidB:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->attr:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->type:B

    iget-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->fidB:B

    invoke-direct {p0, v1}, Lcom/pax/api/model/FILE_INFO;->toInt(B)I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/FILE_INFO;->fid:I

    iget-object v1, p0, Lcom/pax/api/model/FILE_INFO;->nameByte:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/pax/api/model/FILE_INFO;->nameByte:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pax/api/model/FILE_INFO;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/pax/api/model/FILE_INFO;->length:I

    return-void
.end method

.method public serialToBuffer()[B
    .locals 2

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->fidB:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->attr:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/FILE_INFO;->type:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/FILE_INFO;->nameByte:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/FILE_INFO;->length:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
