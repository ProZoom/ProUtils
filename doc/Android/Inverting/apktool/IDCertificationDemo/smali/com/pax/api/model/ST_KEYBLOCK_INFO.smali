.class public Lcom/pax/api/model/ST_KEYBLOCK_INFO;
.super Ljava/lang/Object;


# instance fields
.field aucDstKeyValue:[B

.field aucInitKSN:[B

.field aucKbcv:[B

.field aucKcvValue:[B

.field aucRFU:[B

.field ucDstKeyIdx:B

.field ucDstKeyLen:B

.field ucDstKeyType:B

.field ucFmt:B

.field ucKcvMode:B

.field ucSrcKeyIdx:B

.field ucSrcKeyType:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucRFU:[B

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucDstKeyValue:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucKcvValue:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucInitKSN:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucKbcv:[B

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

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucFmt:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucSrcKeyType:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucSrcKeyIdx:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucDstKeyIdx:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucDstKeyType:B

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucRFU:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucDstKeyLen:B

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucDstKeyValue:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucKcvMode:B

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucKcvValue:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucInitKSN:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucKbcv:[B

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

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucFmt:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucSrcKeyType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucSrcKeyIdx:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucDstKeyIdx:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucDstKeyType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucRFU:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucDstKeyLen:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucDstKeyValue:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->ucKcvMode:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucKcvValue:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucInitKSN:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_KEYBLOCK_INFO;->aucKbcv:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
