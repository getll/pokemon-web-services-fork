<?php

class GenerationModel extends BaseModel {

    public function __construct($options = []) {
        parent::__construct($options);
    }
    
    public function updateGeneration($data, $where){
        $info = $this->updateGeneration($data, $where);
        return $info;
    }

    public function delSingleGeneration($gens){
        $sql = "DELETE FROM generations WHERE generation_id = :gens";
        $data = $this->run($sql, [":gens" => $gens]);
        //return $data;
    }

    public function getGenerationById($gens){
        $sql = "SELECT * FROM generations WHERE generation_id = ?";
        $data = $this->run($sql, [$gens])->fetch();
        return $data;
    }

}