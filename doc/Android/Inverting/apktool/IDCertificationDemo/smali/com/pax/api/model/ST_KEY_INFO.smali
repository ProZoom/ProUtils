.class public Lcom/pax/api/model/ST_KEY_INFO;
.super Ljava/lang/Object;


# instance fields
.field public aucDstKeyValue:[B

.field public iDstKeyLen:I

.field public ucDstKeyIdx:B

.field public ucDstKeyType:B

.field public ucSrcKeyIdx:B

.field public ucSrcKeyType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_KEY_INFO;->aucDstKeyValue:[B

    return-void
.end method


# virtual methods
.method public serialFromBuffer([B)V
    .locals 2
    .param p1, "bb"    # [B

    .prologue
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucSrcKeyType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucSrcKeyIdx:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucDstKeyType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucDstKeyIdx:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->iDstKeyLen:I

    iget-object v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->aucDstKeyValue:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public serialToBuffer()[B
    .locals 2

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucSrcKeyType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucSrcKeyIdx:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucDstKeyType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->ucDstKeyIdx:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->iDstKeyLen:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEY_INFO;->aucDstKeyValue:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
