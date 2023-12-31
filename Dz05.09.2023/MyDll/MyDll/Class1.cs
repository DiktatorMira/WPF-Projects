﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization.Formatters.Soap;
using System.Runtime.Remoting.Metadata.W3cXsd2001;

namespace MyDll {
    public interface ILog {
        void Print();
    }
    public abstract class InfoCarrier : ILog {
        public string Name { get; set; }
        public string Model { get; set; }
        public string DiskName { get; set; }
        public int Capacity { get; set; }
        public int Quantity { get; set; }
        public virtual void Print() {
            Console.Write($"Имя:{Name}\nМодель:{Model}\nНазвание диска:{DiskName}\n" +
                $"Вместимость:{Capacity}\nКоличество:{Quantity}");
        } 
        public virtual void ReportGen() => Console.WriteLine("Отчёт отправлен.");
        public virtual void LoadInfo() => Console.WriteLine("Данные загружены.");
        public virtual void SaveInfo() => Console.WriteLine("Данные сохранены.");
    }
    public class FlashMemory : InfoCarrier {
        public int USBSpeed { get; set; }
        public FlashMemory(string name, string model, string diskname, int capacity, 
            int quantity, int usb) {
            Name = name;
            Model = model;
            DiskName = diskname;
            Capacity = capacity;
            Quantity = quantity;
            USBSpeed = usb;
        }
        public override void Print() {
            base.Print();
            Console.WriteLine($"\nСкорость USB:{USBSpeed}");
        }
        public override void ReportGen() => base.ReportGen();
        public override void LoadInfo() => base.LoadInfo();
        public override void SaveInfo() => base.SaveInfo();
    }
    public class DVD : InfoCarrier {
        public int WriteSpeed { get; set; }
        public DVD(string name, string model, string diskname, int capacity,
            int quantity, int write) {
            Name = name;
            Model = model;
            DiskName = diskname;
            Capacity = capacity;
            Quantity = quantity;
            WriteSpeed = write;
        }
        public override void Print() {
            base.Print();
            Console.WriteLine($"\nСкорость записи:{WriteSpeed}");
        }
        public override void ReportGen() => base.ReportGen();
        public override void LoadInfo() => base.LoadInfo();
        public override void SaveInfo() => base.SaveInfo();
    }
    public class HDD : InfoCarrier {
        public int RotateSpeed { get; set; }
        public HDD(string name, string model, string diskname, int capacity,
            int quantity, int rotate) {
            Name = name;
            Model = model;
            DiskName = diskname;
            Capacity = capacity;
            Quantity = quantity;
            RotateSpeed = rotate;
        }
        public override void Print() {
            base.Print();
            Console.WriteLine($"\nСкорость вращения:{RotateSpeed}");
        }
        public override void ReportGen() => base.ReportGen();
        public override void LoadInfo() => base.LoadInfo();
        public override void SaveInfo() => base.SaveInfo();
    }
    public class Storage {
        public List<InfoCarrier> list { get; set; }
        public Storage() => list = new List<InfoCarrier>();
        public void AddList(InfoCarrier obj) => list.Add(obj);
        public void DeleteList(int index) => list.RemoveAt(index);
        public void PrintList() {
            foreach (InfoCarrier obj in list) Console.WriteLine($"Производитель: {obj.Name}" +
                $"\nМодель: {obj.Model}\nНазвание носителя:{obj.DiskName}\n" +
                $"Ёмкость: {obj.Capacity}\nКоличество: {obj.Quantity}");
        }
        public void EditListItem(InfoCarrier obj)
        {
            int znach, index;
            while (true)
            {
                Console.Write("1 - Изменить имя производителя\n2 - Изменить модель\n" +
                "3 - Изменить название носителя\n4 - Изменить ёмкость\n5 - Изменить количество\n\t" +
                "Выберите значение:");
                znach = int.Parse(Console.ReadLine());
                if (znach >= 1 && znach <= 5) break;
                Console.Clear();
            }
            switch (znach)
            {
                case 1:
                    Console.Write("Введите новое имя производителя: ");
                    obj.Name = Console.ReadLine();
                    break;
                case 2:
                    Console.Write("Введите новую модель: ");
                    obj.Model = Console.ReadLine();
                    break;
                case 3:
                    Console.Write("Введите новое название носителя: ");
                    obj.DiskName = Console.ReadLine();
                    break;
                case 4:
                    Console.Write("Введите новую ёмкость: ");
                    obj.Capacity = int.Parse(Console.ReadLine());
                    break;
                case 5:
                    Console.Write("Введите новое количество: ");
                    obj.Quantity = int.Parse(Console.ReadLine());
                    break;
            }
            while (true)
            {
                Console.Write("Выберите индекс списка:");
                index = int.Parse(Console.ReadLine());
                if (index >= 0 && index <= list.Count) break;
            }
            list.RemoveAt(index);
            list.Insert(index, obj);
        }
    }
    [Serializable]
    public static class MyFile {
        public static void SaveToFile(Storage list) {
            SoapFormatter formatter = new SoapFormatter();
            using (FileStream fs = new FileStream("saveinfo.soap", FileMode.OpenOrCreate)) {
                list.list[1].SaveInfo();
                formatter.Serialize(fs, list);
            }
        }
        public static void LoadFromFile(Storage list) {
            SoapFormatter formatter = new SoapFormatter();
            using (FileStream fs = new FileStream("saveinfo.soap", FileMode.OpenOrCreate)) {
                list.list[1].LoadInfo();
                list.list = (List<InfoCarrier>)formatter.Deserialize(fs);
            }
        }
    }
}
