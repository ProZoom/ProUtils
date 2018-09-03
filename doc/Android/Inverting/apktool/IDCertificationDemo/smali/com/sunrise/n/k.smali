.class public Lcom/sunrise/n/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sunrise/n/k;


# instance fields
.field private b:Lcom/sunrise/n/a;

.field private c:Lcom/sunrise/n/c;

.field private d:Lcom/sunrise/n/e;

.field private e:Lcom/sunrise/n/f;

.field private f:Lcom/sunrise/n/g;

.field private g:Lcom/sunrise/n/h;

.field private h:Lcom/sunrise/n/i;

.field private i:Lcom/sunrise/n/b;

.field private j:Lcom/sunrise/n/d;

.field private k:Lcom/sunrise/n/j;

.field private l:Landroid/content/Context;

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sunrise/n/k;->a:Lcom/sunrise/n/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/n/k;->b:Lcom/sunrise/n/a;

    iput-object v0, p0, Lcom/sunrise/n/k;->c:Lcom/sunrise/n/c;

    iput-object v0, p0, Lcom/sunrise/n/k;->d:Lcom/sunrise/n/e;

    iput-object v0, p0, Lcom/sunrise/n/k;->e:Lcom/sunrise/n/f;

    iput-object v0, p0, Lcom/sunrise/n/k;->f:Lcom/sunrise/n/g;

    iput-object v0, p0, Lcom/sunrise/n/k;->g:Lcom/sunrise/n/h;

    iput-object v0, p0, Lcom/sunrise/n/k;->h:Lcom/sunrise/n/i;

    iput-object v0, p0, Lcom/sunrise/n/k;->i:Lcom/sunrise/n/b;

    iput-object v0, p0, Lcom/sunrise/n/k;->j:Lcom/sunrise/n/d;

    iput-object v0, p0, Lcom/sunrise/n/k;->k:Lcom/sunrise/n/j;

    iput-boolean v1, p0, Lcom/sunrise/n/k;->m:Z

    iput v1, p0, Lcom/sunrise/n/k;->n:I

    return-void
.end method

.method public static a()Lcom/sunrise/n/k;
    .locals 1

    sget-object v0, Lcom/sunrise/n/k;->a:Lcom/sunrise/n/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/n/k;

    invoke-direct {v0}, Lcom/sunrise/n/k;-><init>()V

    sput-object v0, Lcom/sunrise/n/k;->a:Lcom/sunrise/n/k;

    :cond_0
    sget-object v0, Lcom/sunrise/n/k;->a:Lcom/sunrise/n/k;

    return-object v0
.end method

.method private c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public b()Lcom/sunrise/n/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunrise/n/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sunrise/n/k;

    const-string v1, "getCard \u7248\u672c\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/sunrise/k/a;

    const-string v1, "service\u7248\u672c\u5f02\u5e38\uff0c\u8bf7\u786e\u8ba4\u7cfb\u7edf\u7248\u672c!"

    invoke-direct {v0, v1}, Lcom/sunrise/k/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/n/k;->i:Lcom/sunrise/n/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/n/k;->i:Lcom/sunrise/n/b;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/sunrise/n/b;

    iget-object v1, p0, Lcom/sunrise/n/k;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sunrise/n/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sunrise/n/k;->i:Lcom/sunrise/n/b;

    iget-object v0, p0, Lcom/sunrise/n/k;->i:Lcom/sunrise/n/b;

    goto :goto_0
.end method
