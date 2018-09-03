.class public Lcom/pax/api/model/ST_RSA_KEY;
.super Ljava/lang/Object;


# instance fields
.field public aucExponent:[B

.field public aucKeyInfo:[B

.field public aucModulus:[B

.field public iExponentLen:I

.field public iModulusLen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x200

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucModulus:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucExponent:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucKeyInfo:[B

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

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->iModulusLen:I

    iget-object v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucModulus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->iExponentLen:I

    iget-object v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucKeyInfo:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

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

    iget v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->iModulusLen:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucModulus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->iExponentLen:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/ST_RSA_KEY;->aucKeyInfo:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
