using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    public static bool ValidateUser(string UserName, string Password, string Role)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        try
        {
            Database.UserTables.First<UserTable>(Record => (Record.UserName == UserName) &&
            (Record.PassWord == Password) && (Record.Role == Role));
        }
        catch
        {
            return (false);
        }
        return (true);
    }
    public static UserTable GetUser(string UserName)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        UserTable UserInfo = new UserTable();
        try
        {
            UserInfo = Database.UserTables.First<UserTable>(Record => Record.UserName ==
            UserName);
        }
        catch
        {
            return (null);
        }
        return (UserInfo);
    }

    public static Patient AddPatient(string Name, string Father_Name, string SarName, string Mother_Name_Title,
        string BirthPlace, DateTime BirthDate, string Address, string Phone,
        string Mo_Phone, string Status, string SECRETARIAT, string Constraint, DateTime DATE_id,
        string NOTIONAL_NO, string Gender, string Blood_Group,string age)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Patient p = new Patient();

        try
        {
            Database.Patients.First<Patient>(Record => Record.P_NAME == Name);
        }
        catch
        {
            p.P_NAME = Name;
            p.P_FATHER_NAME = Father_Name;
            p.P_SARNAME = SarName;
            p.P_MOTHER_NAME___TITLE = Mother_Name_Title;
            p.P_PLACE_OF_BIRTH = BirthPlace;
            p.P_DATE_OF_BIRTH_ = BirthDate;
            p.ADDESS = Address;
            p.PHONE = Phone;
            p.MOBILE_PHONE = Mo_Phone;
            p.MARITAL_SATUS = Status;
            p.SECRETARIAT = SECRETARIAT;
            p.Constraint = Constraint;
            p.DATE_OF_THE_GRANT_ID_CARD = DATE_id;
            p.NOTIONAL_NO = NOTIONAL_NO;
            p.GENDER = Gender;
            p.Blood_Group = Blood_Group;
            p.AGE = age;
            


            Database.Patients.InsertOnSubmit(p);
            Database.SubmitChanges();
        }

        return (p);
    }



    public static Employee AddEmployee(string Name, string Father_Name, string SarName, string Mother_Name_Title,
        string BirthPlace, DateTime BirthDate, string Address, string Phone,
        string Mo_Phone, string Status, string SECRETARIAT, string Constraint, DateTime DATE_id,
        string NOTIONAL_NO, string Gender, DateTime join)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Employee E = new Employee();

        try
        {
            Database.Employees.First<Employee>(Record => Record.NOTIONAL_NO == NOTIONAL_NO);
        }
        catch
        {
            E.E_NAME = Name;
            E.E_FATHER_NAME = Father_Name;
            E.E_SARNAME = SarName;
            E.E_MOTHER_NAME___TITLE = Mother_Name_Title;
            E.E_PLACE_OF_BIRTH = BirthPlace;
            E.E_DATE_OF_BIRTH = BirthDate;
            E.ADDESS = Address;
            E.PHONE = Phone;
            E.MOBILE_PHONE = Mo_Phone;
            E.MARITAL_SATUS = Status;
            E.SECRETARIAT = SECRETARIAT;
            E.Constraint = Constraint;
            E.DATE_OF_THE_GRANT_ID_CARD = DATE_id;
            E.NOTIONAL_NO = NOTIONAL_NO;
            E.GENDER = Gender;
            E.JOIN_DATE = join;




            Database.Employees.InsertOnSubmit(E);
            Database.SubmitChanges();
        }

        return (E);
    }





    public static UserTable AddUserLog(int Eid, string UserN, string Passw, string Ro)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        UserTable uu = new UserTable();

        try
        {
            Database.UserTables.First<UserTable>(Record => Record.UserName==UserN);
        }
        catch
        {
            uu.EM_ID = Eid;
            uu.UserName = UserN;
            uu.PassWord = Passw;
            uu.Role = Ro;


            Database.UserTables.InsertOnSubmit(uu);
            Database.SubmitChanges();
        }

        return (uu);
    }




    public static Room AddRoom(int No, string Type,decimal Cost_R, int Length,
        Byte Floor, Byte Bad ,string state)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Room R = new Room();

        try
        {
            Database.Rooms.First<Room>(Record => Record.Room_Type == Type);
        }
        catch
        {
            R.Room_No_ = No;
            R.Room_Type = Type;
            R.Room_Cost = Cost_R;
            R.Length_OF_Stay = Length;
            R.Floor = Floor;
            R.Bad_No_ = Bad;
            R.Room_Status = state;

            Database.Rooms.InsertOnSubmit(R);
            Database.SubmitChanges();
        }

        return (R);
    }

    public static Adm Admission(int patient_id, int employee_id , int room_no , DateTime adm_date)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Adm Admis = new Adm();

        try
        {
            Database.Adms.First<Adm>(Record => Record.Adm_Date_Time == adm_date);
        }
        catch
        {
            Admis.Patient_Id = patient_id;
            Admis.E_Id = employee_id;
            Admis.Room_No_ = room_no;
            Admis.Adm_Date_Time = adm_date;
            string status = "Yes";
            Admis.Adm_satats = status;

            Database.Adms.InsertOnSubmit(Admis);
            Database.SubmitChanges();
        }

        return (Admis);
    }







    public static Log_Room lRoom(int pid, int roomno, float t, float pu, float p, string pp ,string codelog, DateTime logde)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Log_Room lR = new Log_Room();

        try
        {
            Database.Log_Rooms.First<Log_Room>(Record => Record.Pressure_patient == p);
        }
        catch
        {
            lR.Patient_ID = pid;
            lR.Room_NO = roomno;
            lR.Tempreture_Patient = t;
            lR.Pressure_patient = p;
            lR.The_patient_s_pulse = pu;
            lR.Prescription = pp;
            lR.Ge_LOG = codelog;
            lR.logdate = logde;

            Database.Log_Rooms.InsertOnSubmit(lR);
            Database.SubmitChanges();
        }

        return (lR);
    }













    public static CBC_Table CBC(int order, float wbs, float neutro, float lympho, float mono ,float eosino,float baso, float bands, float rbc,float hemo,float hema,float mcv,float mch,float mchc ,float rdw ,float plate,float bleed,float coagu,float reti,float esr ,string bloodgroup,string film ,string remark , float Creat , float urea , float Urid)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        CBC_Table CBC_Insert = new CBC_Table();

        try
        {
            Database.CBC_Tables.First<CBC_Table>(Record => Record.No_order == order);
        }
        catch
        {
            CBC_Insert.No_order = order;
            CBC_Insert.WBS = wbs;
            CBC_Insert.Neutro = neutro;
            CBC_Insert.Lympho = lympho;
            CBC_Insert.Mono = mono;
            CBC_Insert.Eosino = eosino;
            CBC_Insert.Baso = baso;
            CBC_Insert.Bands = bands;
            CBC_Insert.RBC = rbc;
            CBC_Insert.Hemoglobin = hemo;
            CBC_Insert.Hematocrit = hema;
            CBC_Insert.MCV = mcv;
            CBC_Insert.MCH = mch;
            CBC_Insert.MCHC = mchc;
            CBC_Insert.RDW = rdw;
            CBC_Insert.Platelets = plate;
            CBC_Insert.Bleeding_Time = bleed;
            CBC_Insert.Coagulation_Time = coagu;
            CBC_Insert.Reticulocyte__count = reti;
            CBC_Insert.E_S_R = esr;
            CBC_Insert.Blood_Group = bloodgroup;
            CBC_Insert.Blood_Film_Inspection = film;
            CBC_Insert.Remarks = remark;
            CBC_Insert.crea = Creat;
            CBC_Insert.urea = urea;
            CBC_Insert.urid = Urid;
            Database.CBC_Tables.InsertOnSubmit(CBC_Insert);
            Database.SubmitChanges();
        }

        return (CBC_Insert);
    }


    public static Product Add_Product(string Pro_Name,float un_cost ,string descr,string cate,string ven,string form)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Product Add_Pro = new Product();

        try
        {
            Database.Products.First<Product>(Record => Record.Product__Name == Pro_Name);
        }
        catch
        {
            Add_Pro.Product__Name = Pro_Name;
            Add_Pro.Unit_Cost = un_cost;
            Add_Pro.Description = descr;
            Add_Pro.category_ID = cate;
            Add_Pro.Vendor_ID = ven;
            Add_Pro.id_form = form;

            Database.Products.InsertOnSubmit(Add_Pro);
            Database.SubmitChanges();
        }

        return (Add_Pro);
    }


    public static Pharmacy_Vendor Add_vendor(string id_ven, string name_vendor,string adds,string ph,string fax )
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Pharmacy_Vendor ven_add = new Pharmacy_Vendor();

        try
        {
            Database.Pharmacy_Vendors.First<Pharmacy_Vendor>(Record => Record.Vendor_ID == id_ven);
        }
        catch
        {
            ven_add.Vendor_ID = id_ven;
            ven_add.Vendor_Name = name_vendor;
            ven_add.Address = adds;
            ven_add.Fax = fax;
            ven_add.Phone = ph;


            Database.Pharmacy_Vendors.InsertOnSubmit(ven_add);
            Database.SubmitChanges();
        }

        return (ven_add);
    }



    public static Product_Category Add_Cate(string id_cate, string name_cate)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Product_Category cate_add = new Product_Category();

        try
        {
            Database.Product_Categories.First<Product_Category>(Record => Record.cate_ID == id_cate);
        }
        catch
        {
            cate_add.cate_ID = id_cate;
            cate_add.Cate_Name = name_cate;


            Database.Product_Categories.InsertOnSubmit(cate_add);
            Database.SubmitChanges();
        }

        return (cate_add);
    }




    public static Department_Store Add_Store(string id_store, string name_store)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Department_Store store_add = new Department_Store();

        try
        {
            Database.Department_Stores.First<Department_Store>(Record => Record.Store_Name == name_store);
        }
        catch
        {
            store_add.Store_ID = id_store;
            store_add.Store_Name = name_store;


            Database.Department_Stores.InsertOnSubmit(store_add);
            Database.SubmitChanges();
        }

        return (store_add);
    }






    public static Item_Store Add_Store_Item(string id_store, int pro,int quantity,int use,DateTime itemdate,string complete ,string namepro)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Item_Store s_i_add = new Item_Store();

        try
        {
           Database.Item_Stores.First<Item_Store>(Record => Record.Date == itemdate);
        }
        catch
        {

            s_i_add.betch_ID = pro;
            s_i_add.Store_ID = id_store;
            s_i_add.Quntity = quantity;
            s_i_add.@using = use;
            s_i_add.Date = itemdate;
            s_i_add.complete = complete;
            s_i_add.Namepro = namepro;


            Database.Item_Stores.InsertOnSubmit(s_i_add);
            Database.SubmitChanges();
        }

        return (s_i_add);
    }




    public static Product_Detail Add_Pro_Bat(int pro, int quantity, int use, DateTime startdate, DateTime enddate,string n)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Product_Detail P_D_add = new Product_Detail();
        

        try
        {
               Database.Product_Details.First<Product_Detail>(Record =>Record.Note==n);
        }
        catch
        {

            P_D_add.Product_ID = pro;

            P_D_add.Qunttity= quantity;

            P_D_add.Product_start_date = startdate;
            P_D_add.Product_end_date = enddate;

            P_D_add.Using = use;
            P_D_add.Note = n;
            Database.Product_Details.InsertOnSubmit(P_D_add);
            Database.SubmitChanges();
        }

        return (P_D_add);
    }



    public static Order_ph Add_ph_or(int pro,int e_id,int p_id, int quantity,string store_id, DateTime orderdate)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Order_ph O_P_add = new Order_ph();

       

            O_P_add.Product_ID = pro;

            O_P_add.Qunantity = quantity;
            O_P_add.E_ID = e_id;
            O_P_add.Patient_ID = p_id;
            O_P_add.Store_ID = store_id;
            O_P_add.Order_Date = orderdate;
        


            Database.Order_phs.InsertOnSubmit(O_P_add);
            Database.SubmitChanges();
       

        return (O_P_add);
    }






    public static Order Add_Lab_or(int p, int e, DateTime r, DateTime t,string stu ,string note, int te,string stpayment)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Order O_Lab_add = new Order();

        O_Lab_add.P_ID = p;
        O_Lab_add.E_ID = e;
        O_Lab_add.Rq_Date = r;
        O_Lab_add.Test_Date = t;
        O_Lab_add.O_Status = stu;
        O_Lab_add.Detail = note;
        O_Lab_add.Test_ID = te;

        O_Lab_add.pay_com = stpayment;

            



            Database.Orders.InsertOnSubmit(O_Lab_add);
            
        
        
        
        
        Database.SubmitChanges();


            return (O_Lab_add);
    }




  
}











