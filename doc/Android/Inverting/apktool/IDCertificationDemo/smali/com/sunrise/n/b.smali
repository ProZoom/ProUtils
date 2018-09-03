.class public Lcom/sunrise/n/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/pos/sdk/card/PosCardManager;

.field private d:Lcom/pos/sdk/accessory/PosAccessoryManager;

.field private e:Lcom/sunrise/l/a;

.field private f:Z

.field private g:Ljava/util/concurrent/CountDownLatch;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private z:Lcom/pos/sdk/card/PosCardManager$EventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/n/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/pos/sdk/card/PosCardManager;->getDefault()Lcom/pos/sdk/card/PosCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    invoke-static {}, Lcom/pos/sdk/accessory/PosAccessoryManager;->getDefault()Lcom/pos/sdk/accessory/PosAccessoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/n/b;->d:Lcom/pos/sdk/accessory/PosAccessoryManager;

    iput-object v4, p0, Lcom/sunrise/n/b;->e:Lcom/sunrise/l/a;

    iput-boolean v1, p0, Lcom/sunrise/n/b;->f:Z

    iput-object v4, p0, Lcom/sunrise/n/b;->g:Ljava/util/concurrent/CountDownLatch;

    const/16 v0, 0x10

    iput v0, p0, Lcom/sunrise/n/b;->h:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/sunrise/n/b;->i:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/sunrise/n/b;->j:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/sunrise/n/b;->k:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/sunrise/n/b;->l:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/sunrise/n/b;->m:I

    iput v2, p0, Lcom/sunrise/n/b;->n:I

    iput v3, p0, Lcom/sunrise/n/b;->o:I

    iput v1, p0, Lcom/sunrise/n/b;->p:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sunrise/n/b;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sunrise/n/b;->r:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/n/b;->s:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sunrise/n/b;->t:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sunrise/n/b;->u:I

    iput v2, p0, Lcom/sunrise/n/b;->v:I

    iput v3, p0, Lcom/sunrise/n/b;->w:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/sunrise/n/b;->x:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sunrise/n/b;->y:I

    new-instance v0, Lcom/sunrise/n/b$1;

    invoke-direct {v0, p0}, Lcom/sunrise/n/b$1;-><init>(Lcom/sunrise/n/b;)V

    iput-object v0, p0, Lcom/sunrise/n/b;->z:Lcom/pos/sdk/card/PosCardManager$EventListener;

    iput-object p1, p0, Lcom/sunrise/n/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/sunrise/n/b;)Lcom/pos/sdk/card/PosCardManager;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    return-object v0
.end method

.method static synthetic b(Lcom/sunrise/n/b;)Lcom/pos/sdk/card/PosCardManager$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/n/b;->z:Lcom/pos/sdk/card/PosCardManager$EventListener;

    return-object v0
.end method

.method static synthetic c(Lcom/sunrise/n/b;)Lcom/sunrise/l/a;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/n/b;->e:Lcom/sunrise/l/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0xf8

    invoke-virtual {p0, v0}, Lcom/sunrise/n/b;->a(I)V

    iget-object v0, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    iget-object v1, p0, Lcom/sunrise/n/b;->z:Lcom/pos/sdk/card/PosCardManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/pos/sdk/card/PosCardManager;->unregisterListener(Lcom/pos/sdk/card/PosCardManager$EventListener;)V

    iget-object v0, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    invoke-virtual {v0}, Lcom/pos/sdk/card/PosCardManager;->close()I

    move-result v0

    return v0
.end method

.method public a([B)Lcom/pos/sdk/utils/PosByteArray;
    .locals 5

    new-instance v0, Lcom/pos/sdk/utils/PosByteArray;

    invoke-direct {v0}, Lcom/pos/sdk/utils/PosByteArray;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>>>  apdu with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sunrise/n/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    invoke-virtual {v1, p1, v0}, Lcom/pos/sdk/card/PosCardManager;->SidCardTransmitCmd([BLcom/pos/sdk/utils/PosByteArray;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "transmitApduToCard = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    const/16 v2, 0x27

    iget-object v0, p0, Lcom/sunrise/n/b;->d:Lcom/pos/sdk/accessory/PosAccessoryManager;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, v2, p1}, Lcom/pos/sdk/accessory/PosAccessoryManager;->setRFRegister(III)V

    iget-object v0, p0, Lcom/sunrise/n/b;->d:Lcom/pos/sdk/accessory/PosAccessoryManager;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2, p1}, Lcom/pos/sdk/accessory/PosAccessoryManager;->setRFRegister(III)V

    return-void
.end method

.method public a(ILcom/sunrise/l/a;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "openIDCardAndDetect"

    invoke-static {v0, v1}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunrise/n/b;->a()I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunrise/n/b;->a(I)V

    iget-object v0, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    iget-object v1, p0, Lcom/sunrise/n/b;->z:Lcom/pos/sdk/card/PosCardManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/pos/sdk/card/PosCardManager;->registerListener(Lcom/pos/sdk/card/PosCardManager$EventListener;)V

    iput-object p2, p0, Lcom/sunrise/n/b;->e:Lcom/sunrise/l/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/pos/sdk/card/PosCardManager;->open(ILandroid/os/Bundle;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open\u5361\u7247\u76d1\u542c "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "picccard-mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    invoke-virtual {v1, v0, p1}, Lcom/pos/sdk/card/PosCardManager;->detectCard(Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detectCard\u5361\u7247\u76d1\u542c "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v1, "cpu"

    iput-object v1, p0, Lcom/sunrise/n/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/n/b;->c:Lcom/pos/sdk/card/PosCardManager;

    iget-object v1, p0, Lcom/sunrise/n/b;->z:Lcom/pos/sdk/card/PosCardManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/pos/sdk/card/PosCardManager;->unregisterListener(Lcom/pos/sdk/card/PosCardManager$EventListener;)V

    :cond_0
    return-void
.end method
