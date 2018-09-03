.class public Lcom/pax/api/model/PICC_PARA;
.super Ljava/lang/Object;


# instance fields
.field public a_card_RxThreshold_val:B

.field public a_card_RxThreshold_w:B

.field public a_card_antenna_gain_val:B

.field public a_card_antenna_gain_w:B

.field public a_conduct_val:B

.field public a_conduct_w:B

.field public a_modulate_val:B

.field public a_modulate_w:B

.field public b_card_antenna_gain_val:B

.field public b_card_antenna_gain_w:B

.field public b_modulate_val:B

.field public b_modulate_w:B

.field public card_RxThreshold_val:B

.field public card_RxThreshold_w:B

.field public card_buffer_val:I

.field public card_buffer_w:B

.field public card_type_check_val:B

.field public card_type_check_w:B

.field public drv_date:[B

.field public drv_ver:[B

.field public f_card_RxThreshold_val:B

.field public f_card_RxThreshold_w:B

.field public f_card_antenna_gain_val:B

.field public f_card_antenna_gain_w:B

.field public f_modulate_val:B

.field public f_modulate_w:B

.field public m_conduct_val:B

.field public m_conduct_w:B

.field public reserved:[B

.field public wait_retry_limit_val:I

.field public wait_retry_limit_w:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/PICC_PARA;->drv_ver:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/PICC_PARA;->drv_date:[B

    const/16 v0, 0x4c

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pax/api/model/PICC_PARA;->reserved:[B

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

    iget-object v1, p0, Lcom/pax/api/model/PICC_PARA;->drv_ver:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/PICC_PARA;->drv_date:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_conduct_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_conduct_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->m_conduct_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->m_conduct_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->b_modulate_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->b_modulate_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_buffer_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/pax/api/model/PICC_PARA;->card_buffer_val:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->wait_retry_limit_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/pax/api/model/PICC_PARA;->wait_retry_limit_val:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_type_check_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_type_check_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_RxThreshold_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_RxThreshold_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_modulate_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_modulate_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_modulate_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_modulate_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_RxThreshold_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_RxThreshold_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_antenna_gain_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_antenna_gain_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->b_card_antenna_gain_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->b_card_antenna_gain_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_antenna_gain_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_antenna_gain_val:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_RxThreshold_w:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_RxThreshold_val:B

    iget-object v1, p0, Lcom/pax/api/model/PICC_PARA;->reserved:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public serialToBuffer()[B
    .locals 3

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/pax/api/model/PICC_PARA;->drv_ver:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/pax/api/model/PICC_PARA;->drv_date:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->a_conduct_w:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->a_conduct_val:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->m_conduct_w:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->m_conduct_val:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->b_modulate_w:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->b_modulate_val:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->card_buffer_w:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/pax/api/model/PICC_PARA;->card_buffer_val:I

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/pax/api/model/PICC_PARA;->wait_retry_limit_w:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/PICC_PARA;->wait_retry_limit_val:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_type_check_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_type_check_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_RxThreshold_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->card_RxThreshold_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_modulate_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_modulate_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_modulate_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_modulate_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_RxThreshold_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_RxThreshold_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_antenna_gain_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->a_card_antenna_gain_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->b_card_antenna_gain_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->b_card_antenna_gain_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_antenna_gain_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_antenna_gain_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_RxThreshold_w:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/PICC_PARA;->f_card_RxThreshold_val:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/PICC_PARA;->reserved:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
