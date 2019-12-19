package com.github.haseoo.courier.servicedata.places;

import com.github.haseoo.courier.commandsdata.places.MagazineAddCommandData;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NonNull;
import lombok.Value;

import static lombok.AccessLevel.PRIVATE;

@Value
@Builder(access = PRIVATE)
@AllArgsConstructor(access = PRIVATE)
public class MagazineAddOperationData {
    @NonNull
    private AddressOperationData address;

    public static MagazineAddOperationData of(MagazineAddCommandData commandData) {
        return MagazineAddOperationData
                .builder()
                .address(AddressOperationData.of(commandData.getAddress()))
                .build();
    }
}
