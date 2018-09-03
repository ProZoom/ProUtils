.class public Lcom/pax/api/model/APDU_SEND;
.super Ljava/lang/Object;


# instance fields
.field public Command:[B

.field public DataIn:[B

.field public Lc:S

.field public Le:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    return-void
.end method

.method public constructor <init>([B[BSS)V
    .locals 3
    .param p1, "cmd"    # [B
    .param p2, "data"    # [B
    .param p3, "lc"    # S
    .param p4, "le"    # S

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-short p3, p0, Lcom/pax/api/model/APDU_SEND;->Lc:S

    iput-short p4, p0, Lcom/pax/api/model/APDU_SEND;->Le:S

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

    iget-object v1, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/pax/api/model/APDU_SEND;->Lc:S

    iget-object v1, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/pax/api/model/APDU_SEND;->Le:S

    return-void
.end method

.method public serialToBuffer()[B
    .locals 7

    const/16 v1, 0x200

    const/4 v0, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    array-length v3, v3

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-short v0, p0, Lcom/pax/api/model/APDU_SEND;->Lc:S

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    array-length v0, v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    iget-short v0, p0, Lcom/pax/api/model/APDU_SEND;->Le:S

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    iget-object v5, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    array-length v5, v5

    if-gt v5, v0, :cond_1

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->Command:[B

    array-length v0, v0

    :cond_1
    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    new-array v3, v1, [B

    iget-object v4, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    array-length v0, v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/pax/api/model/APDU_SEND;->DataIn:[B

    array-length v0, v0

    :goto_2
    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
