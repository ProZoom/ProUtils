.class public Lcom/sunrise/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/a/c;


# static fields
.field private static a:I

.field private static b:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Lcom/sunrise/f/aw;

.field private e:Lcom/sunrise/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x400

    sput v0, Lcom/sunrise/a/f;->a:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/sunrise/a/f;->b:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sunrise/f/aw;->a()Lcom/sunrise/f/aw;

    move-result-object v0

    invoke-static {}, Lcom/sunrise/d/j;->a()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sunrise/a/f;-><init>(Ljava/lang/String;Lcom/sunrise/f/aw;Lcom/sunrise/d/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sunrise/f/aw;Lcom/sunrise/d/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/sunrise/a/g;

    const-string v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/sunrise/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/sunrise/a/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunrise/a/f;->d:Lcom/sunrise/f/aw;

    iput-object p3, p0, Lcom/sunrise/a/f;->e:Lcom/sunrise/d/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/f;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
