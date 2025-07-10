
# AI-Driven Site Feasibility

## Purpose

The AI-Driven Site Feasibility Assessment Tool predicts the suitability of clinical trial sites by analyzing:

* Historical performance (e.g., enrollment rates, protocol deviations)
* Trial requirements (e.g., therapeutic area, patient demographics)
* External factors (e.g., disease prevalence, geographic data)

It assigns feasibility scores to clinical sites and generates human-readable summaries to support data-driven decision-making.

---

## Market Study: Why This Product Now?

The clinical trial landscape is undergoing a transformation:

1. Rising costs and delays: \~40% of delays stem from poor site selection (Tufts Center for the Study of Drug Development).
2. Decentralization trends are pushing sponsors to explore new geographies — making predictive selection critical.
3. Too much data, not enough intelligence: Site-related data exists in silos (CTMS, past trial data, regulatory feedback, survey tools).

---

## Competitive Landscape

**Existing Players**

* CROs (e.g., IQVIA, Parexel) use proprietary tools for site selection.
* Startups like Deep 6 AI leverage AI for patient-site matching.

**Gap Identified**

* Most existing tools focus on patient recruitment or monitoring.
* Very few offer predictive, end-to-end site feasibility assessment with generative AI summaries to support decision-making.

---

## Relevance to Our Organization

This solution complements existing internal initiatives such as:

* Risk-Based Prioritization – for task prioritization during study conduct
* AI-Powered Site Performance – for ongoing site monitoring

It fills a gap by supporting proactive site selection at the study start-up phase.

---

## Customer Analysis

**Primary Customers**

* Clinical Operations Teams – responsible for study start-up; need faster, data-driven site selection
* Sponsors (Pharma/Biotech) – want cost-effective trials with high success rates
* CROs (Contract Research Organizations) – need scalable tools to manage multiple trials

**Customer Pain Points**

* Manual site selection is time-consuming and error-prone
* Lack of predictive insights leads to selection of underperforming sites
* Difficulties in integrating diverse data sources (e.g., historical, demographic, infrastructure)

**Customer Goals**

* Reduce study start-up time by 20–30%
* Increase enrollment success rates by selecting high-performing sites
* Ensure compliance with regulatory standards from the start

---

# 🛠️ Team25 Hackathon – Compute & Oracle DB Setup Guide

> A step-by-step guide to help new team members connect to the Oracle Autonomous Database from our compute instance using Python and the provided wallet.

---

## 📦 Prerequisites

Before you start, make sure you have:

- The full `team25` folder:
  - `ssh-keys/id_rsa` and `id_rsa.pub`
  - `summary.yaml`
  - `DB_Hackathon.zip` (wallet)
  - `DatabaseConfig.py`
- Python 3.9+ on the compute instance
- SCP and SSH access

---

## 1️⃣ SSH into the Compute Instance

Make the private key secure:

```bash
chmod 600 team25/ssh-keys/id_rsa
```

Then connect:

```bash
ssh -i "team25/ssh-keys/id_rsa" team25@hackathon-2025-compute.snlhrprshared1.gbucdsint02lhr.oraclevcn.com
```

---

## 2️⃣ Upload Files to the Remote Instance

From your local machine:

```bash
scp -i "team25/ssh-keys/id_rsa" \
    team25/DatabaseConfig.py \
    team25/summary.yaml \
    team25@hackathon-2025-compute.snlhrprshared1.gbucdsint02lhr.oraclevcn.com:/home/team25/
```

Upload the wallet:

```bash
scp -i "team25/ssh-keys/id_rsa" \
    team25/DB_Hackathon.zip \
    team25@hackathon-2025-compute.snlhrprshared1.gbucdsint02lhr.oraclevcn.com:/home/team25/
```

---

## 3️⃣ Unzip the Wallet

```bash
unzip DB_Hackathon.zip -d wallet
ls wallet
```

You should see files like: `tnsnames.ora`, `sqlnet.ora`, `ewallet.p12`, etc.

---

## 4️⃣ Install Required Python Packages

Use the proxy:

```bash
pip install oracledb --proxy=http://tw-proxy-lhr.oraclecorp.com:80
pip install pyyaml
```

If using a virtual environment:

```bash
source env/bin/activate
```

---

## 5️⃣ Update `summary.yaml`

Ensure the file includes:

```yaml
db_user: TEAM25
db_password: <your_password>
db_wallet_password: <your_wallet_password>
tns_alias: hackathonpubdb_high
```

You can get the wallet password from the organizer or team lead.

---

## 6️⃣ Final `DatabaseConfig.py` Script

```python
import yaml
import oracledb
import os

print("Step 1: Loading summary.yaml...")
with open("summary.yaml", "r") as file:
    config = yaml.safe_load(file)

user = config["db_user"]
password = config["db_password"]
tns_alias = config["tns_alias"]
wallet_password = config["db_wallet_password"]

wallet_path = os.path.abspath("wallet")

print("Step 2: Setting TNS_ADMIN and initializing Oracle Client...")
oracledb.init_oracle_client(lib_dir=None, config_dir=wallet_path)

print("Step 3: Connecting to Oracle Autonomous Database...")

try:
    conn = oracledb.connect(
        user=user,
        password=password,
        dsn=tns_alias,
        config_dir=wallet_path,
        wallet_location=wallet_path,
        wallet_password=wallet_password
    )
    print("Connected to Oracle DB.")
    print("Connected successfully!")
    conn.close()
except Exception as e:
    print(f"Error connecting to Oracle DB: {e}")
```

---

## 7️⃣ Run the Script

```bash
python3 DatabaseConfig.py
```

Expected output:

```
Connected to Oracle DB.
Connected successfully!
```

---

## 🧯 Common Errors

| Error                       | Fix |
|----------------------------|------|
| `ORA-12154`                | Check `tns_alias` in `summary.yaml` |
| `ORA-28759`                | Wrong wallet password – confirm with organizers |
| `ModuleNotFoundError`      | Install `oracledb` or `pyyaml` via pip |
| `Permission denied` (SSH)  | Use correct private key and `chmod 600` |

---

## ✅ You're Done!

You're now ready to run SQL queries, integrate with APEX, or build features that rely on the Oracle DB.

If something fails, check the error message, re-check the wallet password, and refer back to this guide.

