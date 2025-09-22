package com.example.cauthu.repository;

import com.example.cauthu.entity.CauThu;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CauThuRepository implements ICauThuRepository{

    private static List<CauThu> cauthuList = new ArrayList<>();
    static {
        cauthuList.add(new CauThu(1, "Ronaldo",
                LocalDate.parse("1985-02-05"),
                "39 nam", "Tien dao","/images/ronaldo.jpg"));
        cauthuList.add(new CauThu(2, "Messi",
                LocalDate.parse("1987-06-24"),
                "37 nam", "Tien dao","/images/messi.jpg"));
    }

    @Override
    public List<CauThu> findAll() {
        return cauthuList;
    }

    @Override
    public CauThu findById(int id) {
        for(CauThu cauThu : cauthuList) {
            if(id == cauThu.getId()){
                return cauThu;
            }
        }
        return null;
    }

    @Override
    public Boolean addCauThu(CauThu cauThu) {
        return CauThuRepository.cauthuList.add(cauThu);
    }

    @Override
    public void deleteCauThu(int id) {
        cauthuList.removeIf(c -> c.getId() == id);
    }
}
